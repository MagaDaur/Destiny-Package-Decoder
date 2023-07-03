// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:40 2023
Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[155];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = (uint)cb0[90].x;
    r0.z = (uint)vThreadID.x << 3;
    r0.y = (int)r0.z + (int)r0.y;
    r1.xyzw = t2.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t2.Load(r2.x).xyzw;
    r4.xyzw = t2.Load(r2.y).xyzw;
    r5.xyzw = t2.Load(r2.z).xyzw;
    r2.xyzw = t2.Load(r2.w).xyzw;
    r6.xyz = (int3)r0.yyy + int3(5,6,7);
    r7.xyzw = t2.Load(r6.x).xyzw;
    r8.xyzw = t2.Load(r6.y).xyzw;
    r6.x = t2.Load(r6.z).x;
    r0.y = cb0[22].x / r4.w;
    r0.w = saturate(r2.y);
    r9.xyzw = r0.wwww * float4(0.662753999,33.4744873,0,29.8234863) + float4(-0.267982006,-59.8378906,0,-2.46017504);
    r10.x = r0.w * r0.w;
    r9.xy = r9.xy * r10.xx + r9.zw;
    r10.xyz = cmp(r0.www >= float3(0,0.856666982,1));
    r10.xyw = r10.xyz ? float3(1,1,1) : 0;
    r10.xyz = r10.xyw + r10.yww;
    r10.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r10.xyz;
    r10.xyz = float3(0.5,0.5,0.5) * r10.xyz;
    r10.xyz = frac(r10.xyz);
    r9.xy = r10.xy * r9.xy;
    r9.xy = float2(2,2) * r9.xy;
    r0.w = r9.x + r9.y;
    r0.w = r10.z * 2 + r0.w;
    r0.w = saturate(r10.w * 1 + r0.w);
    r0.w = r0.w * 0.0600000024 + 0.00999999978;
    r9.x = saturate(r8.z);
    r9.x = 0.5 + r9.x;
    r9.y = saturate(r3.w);
    r10.xyz = r9.yyy * float3(-0.1875,-2.1875,-2) + float3(1.375,1,3);
    r9.y = r9.y * r9.y;
    r9.z = r10.z * r9.y;
    r9.y = saturate(r10.x * r9.y + r10.y);
    r9.y = r9.y * 0.5 + 0.5;
    r9.x = r9.x * r9.y;
    r9.y = min(1, r9.z);
    r9.y = r9.y * 0.800000012 + 0.200000003;
    r9.z = saturate(r1.w * 0.333332986 + -0.333332986);
    r9.z = r9.z * 1.5 + 1.5;
    r10.w = r3.w + r0.y;
    r11.xyz = cb0[153].xyz * cb0[152].xxx + r1.xyz;
    r0.y = saturate(cb0[154].x);
    r0.y = 1 + -r0.y;
    r11.yzw = r11.xyz * r0.yyy;
    r12.xyz = r11.yzw * cb0[140].xxx + r3.xyz;
    r0.y = saturate(cb0[154].x * r9.z);
    r0.y = 1 + -r0.y;
    r4.x = r4.x * r0.y;
    r0.y = cb0[154].x * r4.x;
    r4.y = r0.y * 6.28318548 + r4.y;
    r0.y = dot(r1.xyz, r1.xyz);
    r0.y = sqrt(r0.y);
    r3.w = 9.99999975e-006 + r0.y;
    r13.xyz = r1.xyz / r3.www;
    r13.xyz = r13.xyz * r0.www + r3.xyz;
    r0.y = cmp(0.00100000005 < r0.y);
    r13.xyz = r0.yyy ? r13.xyz : r3.xyz;
    r0.y = dot(r11.yzw, r11.yzw);
    r0.y = sqrt(r0.y);
    r9.zw = float2(9.99999975e-006,9.99999975e-005) + r0.yy;
    r14.xyz = r11.yzw / r9.zzz;
    r14.xyz = r14.xyz * r0.www + r12.xyz;
    r0.w = cmp(0.00100000005 < r0.y);
    r14.xyz = r0.www ? r14.xyz : r12.xyz;
    r15.xyz = cb12[1].xyw * r13.yyy;
    r13.xyw = cb12[0].xyw * r13.xxx + r15.xyz;
    r13.xyz = cb12[2].xyw * r13.zzz + r13.xyw;
    r13.xyz = cb12[3].xyw + r13.xyz;
    r15.xyz = cb12[1].xyw * r14.yyy;
    r14.xyw = cb12[0].xyw * r14.xxx + r15.xyz;
    r14.xyz = cb12[2].xyw * r14.zzz + r14.xyw;
    r14.xyz = cb12[3].xyw + r14.xyz;
    r13.xy = r13.xy / r13.zz;
    r13.xy = r13.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r14.xy = r14.xy / r14.zz;
    r14.xy = r14.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r13.xy = cb12[12].xy * r13.xy;
    r15.xy = (int2)r13.xy;
    r15.zw = float2(0,0);
    r0.w = t1.Load(r15.xyw).x;
    r0.w = r0.w * cb0[0].y + cb0[0].x;
    r0.w = 1 / r0.w;
    r13.xy = cb12[12].xy * r14.xy;
    r16.xy = (int2)r13.xy;
    r16.zw = float2(0,0);
    r3.w = t1.Load(r16.xyw).x;
    r3.w = r3.w * cb0[0].y + cb0[0].x;
    r3.w = 1 / r3.w;
    r13.xyw = t0.Load(r15.xyz).xyz;
    r13.xyw = r13.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r9.z = dot(r13.xyw, r13.xyw);
    r9.z = rsqrt(r9.z);
    r13.xyw = r13.xyw * r9.zzz;
    r14.xyw = t0.Load(r16.xyz).xyz;
    r14.xyw = r14.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r9.z = dot(r14.xyw, r14.xyw);
    r9.z = rsqrt(r9.z);
    r14.xyw = r14.xyw * r9.zzz;
    r9.z = -r3.w + r0.w;
    r12.w = dot(r13.xyw, r14.xyw);
    r12.w = 1 + -r12.w;
    r0.w = r0.w + -r13.z;
    r3.w = r3.w + -r14.z;
    r0.w = r3.w * r0.w;
    r0.w = cmp(r0.w < 0);
    r9.z = cmp(abs(r9.z) < 2.5);
    r0.w = r0.w ? r9.z : 0;
    r9.z = cmp(r12.w < 0.600000024);
    r0.w = r0.w ? r9.z : 0;
    r13.x = 1 + r1.w;
    r15.xyz = r11.yzw / r9.www;
    r9.z = dot(r14.xyw, r15.xyz);
    r9.w = r9.z + r9.z;
    r16.xyz = -r9.www * r14.xyw + r15.xyz;
    r14.xyz = -r9.zzz * r14.xyw + r15.xyz;
    r9.z = dot(r14.xyz, r14.xyz);
    r9.z = rsqrt(r9.z);
    r14.xyz = r14.xyz * r9.zzz + -r16.xyz;
    r9.yzw = r9.yyy * r14.xyz + r16.xyz;
    r12.w = dot(r9.yzw, r9.yzw);
    r12.w = rsqrt(r12.w);
    r9.yzw = r12.www * r9.yzw;
    r9.yzw = r9.yzw * r0.yyy;
    r13.yzw = r9.yzw * r9.xxx;
    r9.xyz = r13.yzw * cb0[22].xxx + r3.xyz;
    r9.xyz = r0.www ? r9.xyz : r12.xyz;
    r11.x = r1.w;
    r11.xyzw = r0.wwww ? r13.xyzw : r11.xyzw;
    r0.w = cmp(abs(r3.w) < 0.400000006);
    r0.y = cmp(r0.y < 0.400000006);
    r0.y = r0.w ? r0.y : 0;
    r10.xyz = r0.yyy ? r3.xyz : r9.xyz;
    r1.xyz = r0.yyy ? r1.xyz : r11.yzw;
    r0.w = max(1, r11.x);
    r1.w = r0.y ? r0.w : r11.x;
    r0.x = (int)r0.z + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r10.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
    r0.yzw = (int3)r0.xxx + int3(5,6,7);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r7.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r8.xyzw
    r6.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r6.xyzw
  }
  return;
}