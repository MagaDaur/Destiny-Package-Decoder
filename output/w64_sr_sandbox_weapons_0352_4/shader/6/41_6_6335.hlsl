// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:24 2023
Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[175];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
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
    r6.xyz = t2.Load(r0.y).xyz;
    r0.y = cb0[22].x / r4.w;
    r0.zw = saturate(r5.xy);
    r7.x = saturate(r6.z);
    r7.x = r7.x * 0.599999964 + 0.300000012;
    r0.zw = r0.zw * float2(0.25,-0.949999988) + float2(0.75,1);
    r7.y = saturate(r1.w);
    r7.y = 1 + -r7.y;
    r7.y = r7.y * -9.5 + 10;
    r8.w = r3.w + r0.y;
    r9.xyz = cb0[173].xyz * r0.zzz;
    r9.xyz = r9.xyz * cb0[172].xxx + r1.xyz;
    r0.y = saturate(cb0[174].x);
    r0.y = 1 + -r0.y;
    r9.yzw = r9.xyz * r0.yyy;
    r10.xyz = r9.yzw * cb0[158].xxx + r3.xyz;
    r0.y = saturate(cb0[174].x * r7.y);
    r0.y = 1 + -r0.y;
    r4.x = r4.x * r0.y;
    r0.y = cb0[174].x * r4.x;
    r4.y = r0.y * 6.28318548 + r4.y;
    r0.y = dot(r1.xyz, r1.xyz);
    r0.y = sqrt(r0.y);
    r0.z = 9.99999975e-006 + r0.y;
    r7.yzw = r1.xyz / r0.zzz;
    r7.yzw = r7.yzw * float3(0.00999999978,0.00999999978,0.00999999978) + r3.xyz;
    r0.y = cmp(0.00100000005 < r0.y);
    r7.yzw = r0.yyy ? r7.yzw : r3.xyz;
    r0.y = dot(r9.yzw, r9.yzw);
    r0.y = sqrt(r0.y);
    r11.xy = float2(9.99999975e-006,9.99999975e-005) + r0.yy;
    r11.xzw = r9.yzw / r11.xxx;
    r11.xzw = r11.xzw * float3(0.00999999978,0.00999999978,0.00999999978) + r10.xyz;
    r0.z = cmp(0.00100000005 < r0.y);
    r11.xzw = r0.zzz ? r11.xzw : r10.xyz;
    r12.xyz = cb12[1].xyw * r7.zzz;
    r12.xyz = cb12[0].xyw * r7.yyy + r12.xyz;
    r7.yzw = cb12[2].xyw * r7.www + r12.xyz;
    r7.yzw = cb12[3].xyw + r7.yzw;
    r12.xyz = cb12[1].xyw * r11.zzz;
    r12.xyz = cb12[0].xyw * r11.xxx + r12.xyz;
    r11.xzw = cb12[2].xyw * r11.www + r12.xyz;
    r11.xzw = cb12[3].xyw + r11.xzw;
    r7.yz = r7.yz / r7.ww;
    r7.yz = r7.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r11.xz = r11.xz / r11.ww;
    r11.xz = r11.xz * float2(0.5,-0.5) + float2(0.5,0.5);
    r7.yz = cb12[12].xy * r7.yz;
    r12.xy = (int2)r7.yz;
    r12.zw = float2(0,0);
    r0.z = t1.Load(r12.xyw).x;
    r0.z = r0.z * cb0[0].y + cb0[0].x;
    r0.z = 1 / r0.z;
    r7.yz = cb12[12].xy * r11.xz;
    r13.xy = (int2)r7.yz;
    r13.zw = float2(0,0);
    r3.w = t1.Load(r13.xyw).x;
    r3.w = r3.w * cb0[0].y + cb0[0].x;
    r3.w = 1 / r3.w;
    r12.xyz = t0.Load(r12.xyz).xyz;
    r12.xyz = r12.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r7.y = dot(r12.xyz, r12.xyz);
    r7.y = rsqrt(r7.y);
    r12.xyz = r12.xyz * r7.yyy;
    r13.xyz = t0.Load(r13.xyz).xyz;
    r13.xyz = r13.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r7.y = dot(r13.xyz, r13.xyz);
    r7.y = rsqrt(r7.y);
    r13.xyz = r13.xyz * r7.yyy;
    r7.y = -r3.w + r0.z;
    r7.z = dot(r12.xyz, r13.xyz);
    r7.xz = float2(1,1) + -r7.xz;
    r0.z = r0.z + -r7.w;
    r3.w = r3.w + -r11.w;
    r0.z = r3.w * r0.z;
    r0.z = cmp(r0.z < 0);
    r7.y = cmp(abs(r7.y) < 2.5);
    r0.z = r0.z ? r7.y : 0;
    r7.y = cmp(r7.z < 0.600000024);
    r0.z = r0.z ? r7.y : 0;
    r12.x = 1 + r1.w;
    r7.yzw = r9.yzw / r11.yyy;
    r10.w = dot(r13.xyz, r7.yzw);
    r11.x = r10.w + r10.w;
    r11.xyz = -r11.xxx * r13.xyz + r7.yzw;
    r7.yzw = -r10.www * r13.xyz + r7.yzw;
    r10.w = dot(r7.yzw, r7.yzw);
    r10.w = rsqrt(r10.w);
    r7.yzw = r7.yzw * r10.www + -r11.xyz;
    r7.yzw = r7.yzw * float3(0.699999988,0.699999988,0.699999988) + r11.xyz;
    r10.w = dot(r7.yzw, r7.yzw);
    r10.w = rsqrt(r10.w);
    r7.yzw = r10.www * r7.yzw;
    r7.yzw = r7.yzw * r0.yyy;
    r12.yzw = float3(0.600000024,0.600000024,0.600000024) * r7.yzw;
    r7.yzw = r12.yzw * cb0[22].xxx + r3.xyz;
    r7.yzw = r0.zzz ? r7.yzw : r10.xyz;
    r9.x = r1.w;
    r10.xyzw = r0.zzzz ? r12.xyzw : r9.xyzw;
    r0.y = cmp(abs(r3.w) < 0.100000001);
    r0.z = dot(r13.xyz, r9.yzw);
    r11.xyz = -r0.zzz * r13.xyz + r9.yzw;
    r1.w = dot(r11.xyz, r11.xyz);
    r1.w = rsqrt(r1.w);
    r11.xyz = r11.xyz * r1.www;
    r1.w = dot(r11.xyz, r9.yzw);
    r1.w = r1.w * r7.x;
    r0.z = cmp(abs(r0.z) < 1);
    r0.z = r0.y ? r0.z : 0;
    r0.w = cmp(r1.w < r0.w);
    r0.y = r0.y ? r0.w : 0;
    r0.w = r0.y ? 9.99999975e-005 : r1.w;
    r9.xyz = r11.xyz * r0.www;
    r9.xyz = r0.zzz ? r9.xyz : r10.yzw;
    r10.yzw = cb12[7].xyz + -r7.yzw;
    r0.w = dot(r10.yzw, r10.yzw);
    r0.w = rsqrt(r0.w);
    r10.yzw = r10.yzw * r0.www;
    r0.w = 0.00999999978 + -r3.w;
    r10.yzw = r10.yzw * r0.www + r3.xyz;
    r10.yzw = r9.xyz * cb0[22].xxx + r10.yzw;
    r7.xyz = r0.zzz ? r10.yzw : r7.yzw;
    r0.y = r0.z ? r0.y : 0;
    r8.xyz = r0.yyy ? r3.xyz : r7.xyz;
    r1.xyz = r0.yyy ? r1.xyz : r9.xyz;
    r0.y = max(1, r10.x);
    r1.w = r0.z ? r0.y : r10.x;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r8.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
    r0.y = (int)r0.x + 5;
    r6.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r6.xyzw
  }
  return;
}