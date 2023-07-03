// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:41 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
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
    r0.y = mad(7, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t2.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t2.Load(r2.x).xyzw;
    r4.xyzw = t2.Load(r2.y).xyzw;
    r5.xyzw = t2.Load(r2.z).xyzw;
    r2.xyzw = t2.Load(r2.w).xyzw;
    r0.yz = (int2)r0.yy + int2(5,6);
    r6.xyzw = t2.Load(r0.y).xyzw;
    r7.xy = t2.Load(r0.z).xy;
    r0.y = cb0[22].x / r4.w;
    r0.z = saturate(r2.y);
    r8.xyzw = r0.zzzz * float4(0.662753999,33.4744873,0,29.8234863) + float4(-0.267982006,-59.8378906,0,-2.46017504);
    r0.w = r0.z * r0.z;
    r8.xy = r8.xy * r0.ww + r8.zw;
    r9.xyz = cmp(r0.zzz >= float3(0,0.856666982,1));
    r9.xyw = r9.xyz ? float3(1,1,1) : 0;
    r9.xyz = r9.xyw + r9.yww;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r0.zw = r9.xy * r8.xy;
    r0.zw = float2(2,2) * r0.zw;
    r0.z = r0.z + r0.w;
    r0.z = r9.z * 2 + r0.z;
    r0.z = saturate(r9.w * 1 + r0.z);
    r0.z = r0.z * 0.0600000024 + 0.00999999978;
    r0.w = saturate(r6.w);
    r0.w = 0.5 + r0.w;
    r8.x = saturate(r3.w);
    r8.yzw = r8.xxx * float3(-0.1875,-2.1875,-2) + float3(1.375,1,3);
    r8.x = r8.x * r8.x;
    r8.w = r8.w * r8.x;
    r8.x = saturate(r8.y * r8.x + r8.z);
    r8.x = r8.x * 0.5 + 0.5;
    r0.w = r8.x * r0.w;
    r8.x = min(1, r8.w);
    r8.x = r8.x * 0.800000012 + 0.200000003;
    r8.y = saturate(r1.w * 0.333332986 + -0.333332986);
    r8.y = r8.y * 1.5 + 1.5;
    r9.w = r3.w + r0.y;
    r10.xyz = cb0[153].xyz * cb0[152].xxx + r1.xyz;
    r0.y = saturate(cb0[154].x);
    r0.y = 1 + -r0.y;
    r10.yzw = r10.xyz * r0.yyy;
    r11.xyz = r10.yzw * cb0[140].xxx + r3.xyz;
    r0.y = saturate(cb0[154].x * r8.y);
    r0.y = 1 + -r0.y;
    r4.x = r4.x * r0.y;
    r0.y = cb0[154].x * r4.x;
    r4.y = r0.y * 6.28318548 + r4.y;
    r0.y = dot(r1.xyz, r1.xyz);
    r0.y = sqrt(r0.y);
    r3.w = 9.99999975e-006 + r0.y;
    r8.yzw = r1.xyz / r3.www;
    r8.yzw = r8.yzw * r0.zzz + r3.xyz;
    r0.y = cmp(0.00100000005 < r0.y);
    r8.yzw = r0.yyy ? r8.yzw : r3.xyz;
    r0.y = dot(r10.yzw, r10.yzw);
    r0.y = sqrt(r0.y);
    r12.xy = float2(9.99999975e-006,9.99999975e-005) + r0.yy;
    r12.xzw = r10.yzw / r12.xxx;
    r12.xzw = r12.xzw * r0.zzz + r11.xyz;
    r0.z = cmp(0.00100000005 < r0.y);
    r12.xzw = r0.zzz ? r12.xzw : r11.xyz;
    r13.xyz = cb12[1].xyw * r8.zzz;
    r13.xyz = cb12[0].xyw * r8.yyy + r13.xyz;
    r8.yzw = cb12[2].xyw * r8.www + r13.xyz;
    r8.yzw = cb12[3].xyw + r8.yzw;
    r13.xyz = cb12[1].xyw * r12.zzz;
    r13.xyz = cb12[0].xyw * r12.xxx + r13.xyz;
    r12.xzw = cb12[2].xyw * r12.www + r13.xyz;
    r12.xzw = cb12[3].xyw + r12.xzw;
    r8.yz = r8.yz / r8.ww;
    r8.yz = r8.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r12.xz = r12.xz / r12.ww;
    r12.xz = r12.xz * float2(0.5,-0.5) + float2(0.5,0.5);
    r8.yz = cb12[12].xy * r8.yz;
    r13.xy = (int2)r8.yz;
    r13.zw = float2(0,0);
    r0.z = t1.Load(r13.xyw).x;
    r0.z = r0.z * cb0[0].y + cb0[0].x;
    r0.z = 1 / r0.z;
    r8.yz = cb12[12].xy * r12.xz;
    r14.xy = (int2)r8.yz;
    r14.zw = float2(0,0);
    r3.w = t1.Load(r14.xyw).x;
    r3.w = r3.w * cb0[0].y + cb0[0].x;
    r3.w = 1 / r3.w;
    r13.xyz = t0.Load(r13.xyz).xyz;
    r13.xyz = r13.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.y = dot(r13.xyz, r13.xyz);
    r8.y = rsqrt(r8.y);
    r13.xyz = r13.xyz * r8.yyy;
    r14.xyz = t0.Load(r14.xyz).xyz;
    r14.xyz = r14.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.y = dot(r14.xyz, r14.xyz);
    r8.y = rsqrt(r8.y);
    r14.xyz = r14.xyz * r8.yyy;
    r8.y = -r3.w + r0.z;
    r8.z = dot(r13.xyz, r14.xyz);
    r8.z = 1 + -r8.z;
    r0.z = r0.z + -r8.w;
    r3.w = r3.w + -r12.w;
    r0.z = r3.w * r0.z;
    r0.z = cmp(r0.z < 0);
    r8.y = cmp(abs(r8.y) < 2.5);
    r0.z = r0.z ? r8.y : 0;
    r8.y = cmp(r8.z < 0.600000024);
    r0.z = r0.z ? r8.y : 0;
    r13.x = 1 + r1.w;
    r8.yzw = r10.yzw / r12.yyy;
    r11.w = dot(r14.xyz, r8.yzw);
    r12.x = r11.w + r11.w;
    r12.xyz = -r12.xxx * r14.xyz + r8.yzw;
    r8.yzw = -r11.www * r14.xyz + r8.yzw;
    r11.w = dot(r8.yzw, r8.yzw);
    r11.w = rsqrt(r11.w);
    r8.yzw = r8.yzw * r11.www + -r12.xyz;
    r8.xyz = r8.xxx * r8.yzw + r12.xyz;
    r8.w = dot(r8.xyz, r8.xyz);
    r8.w = rsqrt(r8.w);
    r8.xyz = r8.xyz * r8.www;
    r8.xyz = r8.xyz * r0.yyy;
    r13.yzw = r8.xyz * r0.www;
    r8.xyz = r13.yzw * cb0[22].xxx + r3.xyz;
    r8.xyz = r0.zzz ? r8.xyz : r11.xyz;
    r10.x = r1.w;
    r10.xyzw = r0.zzzz ? r13.xyzw : r10.xyzw;
    r0.z = cmp(abs(r3.w) < 0.400000006);
    r0.y = cmp(r0.y < 0.400000006);
    r0.y = r0.z ? r0.y : 0;
    r9.xyz = r0.yyy ? r3.xyz : r8.xyz;
    r1.xyz = r0.yyy ? r1.xyz : r10.yzw;
    r0.z = max(1, r10.x);
    r1.w = r0.y ? r0.z : r10.x;
    r0.x = mad(7, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r9.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
    r0.yz = (int2)r0.xx + int2(5,6);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r6.xyzw
    r7.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r7.xyzw
  }
  return;
}