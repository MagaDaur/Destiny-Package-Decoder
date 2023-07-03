// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:39 2023
Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[158];
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
    r0.y = mad(6, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t2.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t2.Load(r2.x).xyzw;
    r4.xyzw = t2.Load(r2.y).xyzw;
    r5.xyzw = t2.Load(r2.z).xyzw;
    r2.xyzw = t2.Load(r2.w).xyzw;
    r0.y = (int)r0.y + 5;
    r6.x = t2.Load(r0.y).x;
    r0.y = cb0[22].x / r5.x;
    r0.z = saturate(r6.x);
    r7.xy = r0.zz * float2(0.539568007,6.81818295) + float2(0,-5.81818295);
    r8.xyz = cmp(r0.zzz >= float3(0,0.926666975,1));
    r8.xyw = r8.xyz ? float3(1,1,1) : 0;
    r8.xyz = r8.xyw + r8.yww;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r0.zw = r8.xy * r7.xy;
    r0.zw = float2(2,2) * r0.zw;
    r0.z = r0.z + r0.w;
    r0.z = r8.z * 2 + r0.z;
    r0.z = saturate(r8.w * 1 + r0.z);
    r0.z = r0.z * 0.800000012 + 0.200000003;
    r4.x = r4.x + r0.y;
    r7.xyz = cb0[156].xyz * cb0[155].xxx;
    r7.xyz = r7.xyz * float3(0.75,0.75,0.75) + r1.xyz;
    r0.y = saturate(cb0[157].x);
    r0.y = 1 + -r0.y;
    r7.xyz = r7.xyz * r0.yyy;
    r8.xyz = cb0[142].xxx * r7.xyz;
    r9.xyz = r7.xyz * cb0[142].xxx + r3.xyz;
    r0.y = cb0[157].x * r4.y;
    r4.z = r0.y * 6.28318548 + r4.z;
    r0.y = dot(r1.xyz, r1.xyz);
    r0.y = sqrt(r0.y);
    r0.w = 9.99999975e-006 + r0.y;
    r10.xyz = r1.xyz / r0.www;
    r10.xyz = r10.xyz * float3(0.00999999978,0.00999999978,0.00999999978) + r3.xyz;
    r0.y = cmp(0.00100000005 < r0.y);
    r10.xyz = r0.yyy ? r10.xyz : r3.xyz;
    r0.y = dot(r7.xyz, r7.xyz);
    r0.y = sqrt(r0.y);
    r0.w = 9.99999975e-006 + r0.y;
    r11.xyz = r7.xyz / r0.www;
    r11.xyz = r11.xyz * float3(0.00999999978,0.00999999978,0.00999999978) + r9.xyz;
    r0.y = cmp(0.00100000005 < r0.y);
    r11.xyz = r0.yyy ? r11.xyz : r9.xyz;
    r12.xyz = cb12[1].xyw * r10.yyy;
    r10.xyw = cb12[0].xyw * r10.xxx + r12.xyz;
    r10.xyz = cb12[2].xyw * r10.zzz + r10.xyw;
    r10.xyz = cb12[3].xyw + r10.xyz;
    r12.xyz = cb12[1].xyw * r11.yyy;
    r11.xyw = cb12[0].xyw * r11.xxx + r12.xyz;
    r11.xyz = cb12[2].xyw * r11.zzz + r11.xyw;
    r11.xyz = cb12[3].xyw + r11.xyz;
    r0.yw = r10.xy / r10.zz;
    r0.yw = r0.yw * float2(0.5,-0.5) + float2(0.5,0.5);
    r10.xy = r11.xy / r11.zz;
    r10.xy = r10.xy * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.yw = cb12[12].xy * r0.yw;
    r12.xy = (int2)r0.yw;
    r12.zw = float2(0,0);
    r0.y = t1.Load(r12.xyw).x;
    r0.y = r0.y * cb0[0].y + cb0[0].x;
    r0.y = 1 / r0.y;
    r10.xy = cb12[12].xy * r10.xy;
    r13.xy = (int2)r10.xy;
    r13.zw = float2(0,0);
    r0.w = t1.Load(r13.xyw).x;
    r0.w = r0.w * cb0[0].y + cb0[0].x;
    r0.w = 1 / r0.w;
    r10.xyw = t0.Load(r12.xyz).xyz;
    r10.xyw = r10.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r7.w = dot(r10.xyw, r10.xyw);
    r7.w = rsqrt(r7.w);
    r10.xyw = r10.xyw * r7.www;
    r11.xyw = t0.Load(r13.xyz).xyz;
    r11.xyw = r11.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r7.w = dot(r11.xyw, r11.xyw);
    r7.w = rsqrt(r7.w);
    r11.xyw = r11.xyw * r7.www;
    r7.w = r0.y + -r0.w;
    r8.w = dot(r10.xyw, r11.xyw);
    r8.w = 1 + -r8.w;
    r0.y = r0.y + -r10.z;
    r0.w = r0.w + -r11.z;
    r9.w = r0.y * r0.w;
    r9.w = cmp(r9.w < 0);
    r7.w = cmp(abs(r7.w) < 2.5);
    r7.w = r7.w ? r9.w : 0;
    r8.w = cmp(r8.w < 0.600000024);
    r7.w = r7.w ? r8.w : 0;
    r8.w = abs(r0.y) + abs(r0.w);
    r0.y = abs(r0.y) / r8.w;
    r10.x = cb0[22].x + r1.w;
    r12.y = 1 + r3.w;
    r1.w = dot(r11.xyw, r7.xyz);
    r8.w = r1.w + r1.w;
    r13.xyz = -r8.www * r11.xyw + r7.xyz;
    r13.xyz = r13.xyz * r0.zzz;
    r8.xyz = r0.yyy * r8.xyz + r3.xyz;
    r0.y = 1 + -r0.y;
    r14.xyz = r13.xyz * r0.yyy;
    r8.xyz = r14.xyz * cb0[22].xxx + r8.xyz;
    r8.xyz = r7.www ? r8.xyz : r9.xyz;
    r9.xyz = r7.www ? r13.xyz : r7.xyz;
    r12.x = 0;
    r10.y = r3.w;
    r0.yz = r7.ww ? r12.xy : r10.xy;
    r3.w = cmp(abs(r0.w) < 0.100000001);
    r10.xyz = -r1.www * r11.xyw + r7.xyz;
    r7.w = dot(r10.xyz, r10.xyz);
    r7.w = rsqrt(r7.w);
    r10.xyz = r10.xyz * r7.www;
    r7.x = dot(r10.xyz, r7.xyz);
    r7.y = 0.75 * r7.x;
    r1.w = cmp(abs(r1.w) < 0.200000003);
    r1.w = r3.w ? r1.w : 0;
    r7.x = cmp(r7.x < 0.0666666701);
    r3.w = r3.w ? r7.x : 0;
    r7.x = r3.w ? 9.99999975e-005 : r7.y;
    r7.xyz = r10.xyz * r7.xxx;
    r7.xyz = r1.www ? r7.xyz : r9.xyz;
    r9.xyz = cb12[7].xyz + -r8.xyz;
    r7.w = dot(r9.xyz, r9.xyz);
    r7.w = rsqrt(r7.w);
    r9.xyz = r9.xyz * r7.www;
    r0.w = 0.00999999978 + -r0.w;
    r9.xyz = r9.xyz * r0.www + r3.xyz;
    r9.xyz = r7.xyz * cb0[22].xxx + r9.xyz;
    r8.xyz = r1.www ? r9.xyz : r8.xyz;
    r0.w = r1.w ? r3.w : 0;
    r3.xyz = r0.www ? r3.xyz : r8.xyz;
    r7.xyz = r0.www ? r1.xyz : r7.xyz;
    r0.w = max(1, r0.z);
    r3.w = r1.w ? r0.w : r0.z;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
    r7.w = r0.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r7.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
    r0.y = (int)r0.x + 5;
    r6.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r6.xyzw
  }
  return;
}